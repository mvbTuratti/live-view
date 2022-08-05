defmodule FinalWeb.Chat do
  use FinalWeb, :live_view


  def mount(_,_, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="flex">
    <div class="bg-gray-900 w-20 flex-none flex flex-col min-h-screen h-screen px-2 py-2">
        <div class=" overflow-y-auto">
            <ul class="text-center">
                <li><a href="#"><img src="images/license.svg" alt="language2language" class="w-12 h-12 rounded-full mx-auto"></a></li>
                <li class="border-b border-gray-700 mx-4 mt-3"></li>
                <li class="mt-3"><a href="#"><img src="images/light-on.svg" alt="discord" class="w-12 h-12 rounded-full mx-auto"></a></li>
                <li class="mt-3"><a href="#"><img src="images/light-off.svg" alt="discord" class="w-12 h-12 rounded-full mx-auto"></a></li>
                <li class="mt-3">
                    <a href="#" class="w-12 h-12 bg-gray-800 text-teal-500 hover:bg-teal-500 hover:text-white inline-block rounded-full">
                        <svg fill="currentColor" height="42" viewBox="-3 -5 30 30" width="50"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M19.23 15.26l-2.54-.29c-.61-.07-1.21.14-1.64.57l-1.84 1.84c-2.83-1.44-5.15-3.75-6.59-6.59l1.85-1.85c.43-.43.64-1.03.57-1.64l-.29-2.52c-.12-1.01-.97-1.77-1.99-1.77H5.03c-1.13 0-2.07.94-2 2.07.53 8.54 7.36 15.36 15.89 15.89 1.13.07 2.07-.87 2.07-2v-1.73c.01-1.01-.75-1.86-1.76-1.98z"></path></svg>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="flex-1 flex flex-col min-h-screen h-screen">
        <div class="flex text-white">
            <div class="bg-gray-800 w-56 flex-none flex items-center justify-between px-3 py-2 border-b border-gray-900">
                <div>Tailwind CSS</div>
                <button>
                    <svg fill="currentColor" height="24" viewBox="0 0 24 24" width="24"><path d="M8.12 9.29L12 13.17l3.88-3.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-4.59 4.59c-.39.39-1.02.39-1.41 0L6.7 10.7c-.39-.39-.39-1.02 0-1.41.39-.38 1.03-.39 1.42 0z"></path></svg>
                </button>
            </div>
            <div class="flex-1 bg-gray-750 flex items-center justify-between border-b border-gray-900 px-4">
                <div class="flex items-center">
                    <div class="text-gray-500 text-2xl">#</div>
                    <div class="ml-2 text-sm text-white">general</div>
                    <div class="border-l pl-3 ml-3 border-gray-600 text-xs text-gray-400s">general discussion of tailwindcss</div>
                </div>
                <div class="flex h-12 items-center">
                    <a href="#" class="ml-4">
                        <form action="#" class="relative">
                            <input type="text" placeholder="Search" class="rounded bg-gray-900 text-gray-200 text-xs px-2 py-1">
                            <span class="absolute right-0 top-0 mr-1" style="top:5px">
                                <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0z" fill="none"></path><path fill="gray" d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path></svg>
                            </span>
                        </form>
                    </a>
                </div>
            </div>
        </div>
        <div class="flex-1 flex overflow-y-hidden">
            <div class="bg-gray-800 w-56 flex-none overflow-y-auto flex flex-col justify-between">
                <div class="text-sm overflow-y-auto">
                    <ul class="px-2 py-3">
                        <li class="text-gray-200 bg-gray-750 rounded px-2 hover:text-gray-200 hover:bg-gray-900">
                            <a href="#" class="flex items-center">
                                <span class="text-xl">#</span>
                                <span class="ml-2">welcome</span>
                            </a>
                        </li>
                        <li class="text-gray-500 px-2 hover:text-gray-200 hover:bg-gray-900">
                            <a href="#" class="flex items-center">
                                <span class="text-xl">#</span>
                                <span class="ml-2">faq</span>
                            </a>
                        </li>
                    </ul>
                    <button phx-click="click_topic" class="flex items-center text-gray-500 hover:text-gray-200 px-1">
                        <svg fill="currentColor" height="24" viewBox="0 0 24 24" width="24"><path d="M8.12 9.29L12 13.17l3.88-3.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-4.59 4.59c-.39.39-1.02.39-1.41 0L6.7 10.7c-.39-.39-.39-1.02 0-1.41.39-.38 1.03-.39 1.42 0z"></path></svg>
                        <h3 class="uppercase tracking-wide font-semibold text-sx">Tailwind CSS</h3>
                    </button>
                    <ul class="px-2 py-3">
                        <li class="text-gray-200 px-2 hover:text-gray-200 hover:bg-gray-900">
                            <a href="#" class="flex items-center">
                                <span class="text-xl">#</span>
                                <span class="ml-2">topic 1</span>
                            </a>
                        </li>
                        <li class="text-gray-200 px-2 hover:text-gray-200 hover:bg-gray-900">
                            <a href="#" class="flex items-center">
                                <span class="text-xl">#</span>
                                <span class="ml-2">topic 2</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="bg-gray-850 py-2 px-2 flex items-center justify-between">
                    <div class="flex items-center">
                        <a href="#"><img src="images/terminal.svg" alt="avatar" class="w-8 h-8 rounded-full"></a>
                        <div class="text-xs ml-2">
                            <div class="text-white">mvbTuratti</div>
                            <div class="text-gray-500 text-xxs">#9899</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="flex-1 flex justify-between">
                <div class="bg-gray-750 flex-1 flex flex-col justify-between">
                    <div class="text-sm text-gray-400 overflow-y-auto">
                        <div class="flex mx-6 my-3 py-4 border-t border-gray-700">
                            <div class="flex-none">
                                <a href="#"><img src="images/terminal.svg" alt="avatar" class="w-10 h-10 rounded-full"></a>
                            </div>
                            <div class="ml-5">
                                <div>
                                    <a href="#" class="text-white hover:underline">mvbTuratti</a>
                                    <span class="text-xs text-gray-500 ml-1">07/01/1996</span>
                                </div>
                                <div>
                                    <div>ahsauhduasds dasudhasu</div>
                                    <div>ahsauhduasds dasudhasu</div>
                                    <div>ahsauhduashasu</div>
                                </div>
                            </div>
                        </div>
                        <div class="flex mx-6 my-3 py-4 border-t border-gray-700">
                            <div class="flex-none">
                                <a href="#"><img src="images/terminal.svg" alt="avatar" class="w-10 h-10 rounded-full"></a>
                            </div>
                            <div class="ml-5">
                                <div>
                                    <a href="#" class="text-white hover:underline">mvbTuratti</a>
                                    <span class="text-xs text-gray-500 ml-1">07/01/1996</span>
                                </div>
                                <div>
                                    <div>ahsauhduasds dasudhasu</div>
                                    <div>ahsauhduasds dasudhasu</div>
                                    <div>ahsauhduashasu</div>
                                </div>
                            </div>
                        </div>
                        <div class="flex mx-6 my-3 py-4 border-t border-gray-700">
                            <div class="flex-none">
                                <a href="#"><img src="images/terminal.svg" alt="avatar" class="w-10 h-10 rounded-full"></a>
                            </div>
                            <div class="ml-5">
                                <div>
                                    <a href="#" class="text-white hover:underline">mvbTuratti</a>
                                    <span class="text-xs text-gray-500 ml-1">07/01/1996</span>
                                </div>
                                <div>
                                    <div>ahsauhduasds dasudhasu</div>
                                    <div>ahsauhduasds dasudhasu</div>
                                    <div>ahsauhduashasu</div>
                                </div>
                            </div>
                        </div>
                        <div class="flex mx-6 my-3 py-4 border-t border-gray-700">
                            <div class="flex-none">
                                <a href="#"><img src="images/terminal.svg" alt="avatar" class="w-10 h-10 rounded-full"></a>
                            </div>
                            <div class="ml-5">
                                <div>
                                    <a href="#" class="text-white hover:underline">mvbTuratti</a>
                                    <span class="text-xs text-gray-500 ml-1">07/01/1996</span>
                                </div>
                                <div>
                                    <div>ahsauhduasds dasudhasu</div>
                                    <div>ahsauhduasds dasudhasu</div>
                                    <div>ahsauhduashasu</div>
                                </div>
                            </div>
                        </div>
                        <div class="flex mx-6 my-3 py-4 border-t border-gray-700">
                            <div class="flex-none">
                                <a href="#"><img src="images/terminal.svg" alt="avatar" class="w-10 h-10 rounded-full"></a>
                            </div>
                            <div class="ml-5">
                                <div>
                                    <a href="#" class="text-white hover:underline">mvbTuratti</a>
                                    <span class="text-xs text-gray-500 ml-1">07/01/1996</span>
                                </div>
                                <div>
                                    <div>ahsauhduasds dasudhasu</div>
                                    <div>ahsauhduasds dasudhasu</div>
                                    <div>ahsauhduashasu</div>
                                </div>
                            </div>
                        </div>
                        <div class="flex mx-6 my-3 py-4 border-t border-gray-700">
                            <div class="flex-none">
                                <a href="#"><img src="images/terminal.svg" alt="avatar" class="w-10 h-10 rounded-full"></a>
                            </div>
                            <div class="ml-5">
                                <div>
                                    <a href="#" class="text-white hover:underline">mvbTuratti</a>
                                    <span class="text-xs text-gray-500 ml-1">07/01/1996</span>
                                </div>
                                <div>
                                    <div>ahsauhduasds dasudhasu</div>
                                    <div>ahsauhduasds dasudhasu</div>
                                    <div>ahsauhduashasu</div>
                                </div>
                            </div>
                        </div>
                        <div class="flex mx-6 my-3 py-4 border-t border-gray-700">
                            <div class="flex-none">
                                <a href="#"><img src="images/terminal.svg" alt="avatar" class="w-10 h-10 rounded-full"></a>
                            </div>
                            <div class="ml-5">
                                <div>
                                    <a href="#" class="text-white hover:underline">mvbTuratti</a>
                                    <span class="text-xs text-gray-500 ml-1">07/01/1996</span>
                                </div>
                                <div>
                                    <div>ahsauhduasds dasudhasu</div>
                                    <div>ahsauhduasds dasudhasu</div>
                                    <div>ahsauhduashasu</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bg-gray-750 h-24 flex items-center mx-3 border-t border-gray-600">
                        <button class="px-2 py-2 h-10 bg-gray-700 rounded-l text-gray-500 hover:text-white border-l border-t border-b  border-gray-500">
                            <svg fill="currentColor" enable-background="new 0 0 20 20" height="20" viewBox="0 0 20 20" width="20"><g><rect fill="none" height="20" width="20"></rect></g><g><g></g><path d="M9.99,3C6.13,3,3,6.14,3,10s3.13,7,6.99,7c3.87,0,7.01-3.14,7.01-7S13.86,3,9.99,3z M7,7c0.55,0,1,0.45,1,1 c0,0.55-0.45,1-1,1S6,8.55,6,8C6,7.45,6.45,7,7,7z M10,14c-1.86,0-3.41-1.28-3.86-3h7.72C13.41,12.72,11.86,14,10,14z M13,9 c-0.55,0-1-0.45-1-1c0-0.55,0.45-1,1-1s1,0.45,1,1C14,8.55,13.55,9,13,9z"></path></g></svg>
                        </button>
                        <div class="flex-1">
                            <input type="text" class="w-full text-sm h-10 px-2 py-2 bg-gray-700 text-gray-200 focus:outline-none">
                        </div>
                        <div class="px-2 py-2 bg-gray-700 rounded-r flex item-center h-10 hover:text-white border-r border-t border-b border-gray-500">
                            <button>
                                <svg fill="currentColor" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M2.01 21L23 12 2.01 3 2 10l15 2-15 2 .01 7z"></path></svg>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="bg-gray-800 w-56 flex-none px-3 py-3 overflow-y-auto">
                    <h3 class="uppercase tracking-wide font-semibold text-xs text-gray-500 mb-2">Core Team - 1</h3>
                    <ul class="mb-4">
                        <button class="w-48">
                            <li class="text-gray-500 px-2 hover:text-gray-200 hover:bg-gray-750 py-1 my-2 flex items-center">
                                <img src="images/terminal.svg" alt="avatar" class="w-8 h-8 rounded-full">
                                <div class="ml-2 text-xs">mvbTuratti</div>
                            </li>
                        </button>
                    </ul>
                    <h3 class="uppercase tracking-wide font-semibold text-xs text-gray-500 mb-2">Online - 3</h3>
                    <ul class="mb-4">
                        <button class="w-48">
                            <li class="text-gray-500 px-2 hover:text-gray-200 hover:bg-gray-750 py-1 my-1 flex items-center">
                                <img src="images/terminal.svg" alt="avatar" class="w-8 h-8 rounded-full">
                                <div class="ml-2 text-xs">mvbTuratti</div>
                            </li>
                        </button>
                        <button class="w-48">
                            <li class="text-gray-500 px-2 hover:text-gray-200 hover:bg-gray-750 py-1 my-1 flex items-center">
                                <img src="images/terminal.svg" alt="avatar" class="w-8 h-8 rounded-full">
                                <div class="ml-2 text-xs">mvbTuratti</div>
                            </li>
                        </button>
                        <button class="w-48">
                            <li class="text-gray-500 px-2 hover:text-gray-200 hover:bg-gray-750 py-1 my-1 flex items-center">
                                <img src="images/terminal.svg" alt="avatar" class="w-8 h-8 rounded-full">
                                <div class="ml-2 text-xs">mvbTuratti</div>
                            </li>
                        </button>
                    </ul>

                </div>
            </div>
        </div>
    </div>
  </div>
  """
  end


end
